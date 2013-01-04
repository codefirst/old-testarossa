require 'spec_helper'

describe Plan do
  before do
    @project = Project.create(:name => "PlanTest")
  end

  context "when planing phase" do
    context "with valid parameters" do
      it do
        expect {
          plan = Plan.create(:started_at => Date.today, :expect => 10)
          plan.project = @project
          plan.save!
        }.to_not raise_error
      end
    end

    context "with invalid" do
      before do
        @plan = Plan.create(:started_at => Date.today, :expect => 10)
        @plan.project = @project
        @plan.save!
      end

      describe "project" do
        it do expect {
          @plan.project = nil
          @plan.save!
        }.to raise_error
        end
      end

      describe "expect" do
        it do expect {
          @plan.expect = "hoge"
          @plan.save!
        }.to raise_error
        end
      end

      describe "started_at" do
        it do expect {
          @plan.started_at = "hoge"
          @plan.save!
        }.to raise_error
        end
      end
    end
  end

  context "after execution" do
    before do
      @plan = Plan.create(:started_at => Date.today, :expect => 10)
      @plan.project = @project
      @plan.save!
    end

    context "with valid parameters" do
      it do expect {
        @plan.actual = 10
        @plan.finished_at = Date.today
        @plan.save!
      }.to_not raise_error
      end
    end

    context "with invalid" do
      describe "expect" do
        it do expect {
          @plan.expect = "hoge"
          @plan.save!
        }.to raise_error
        end
      end

      describe "finished_at" do
        before do
          @plan.finished_at = "hoge"
          @plan.save
        end

        subject { @plan.finished_at }
        it { should be_nil }
      end
    end
  end
end
