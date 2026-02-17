# Clawbot Cost Optimization - Configured

## Strategy Applied: ALL 5 Optimizations

### 1.  Batch Checks (2-4x/day)
- **Schedule**: 3x per day at 9am, 1pm, 5pm
- **Savings**: 90% vs every-30-min polling
- **Impact**: Reduces from 48 calls/day to 3 calls/day

### 2.  Use Cheaper Model (Haiku)
- **Model**: Claude 3 Haiku instead of Sonnet
- **Savings**: 90% cost reduction
- **Cost**: .002-0.003 per heartbeat vs .02-0.05

### 3.  Selective Checks
- **Enabled**: Email, Calendar, Git status only
- **Disabled**: Weather, Social media mentions
- **Savings**: 30-50% token reduction

### 4.  Time-Based (Work Hours Only)
- **Active**: 9am-6pm
- **Inactive**: 6pm-9am (15 hours/day)
- **Savings**: 60% time reduction

### 5.  Keep HEARTBEAT.md Minimal
- **Current**: Only essential checks listed
- **Benefit**: Minimal token usage per check

## Cost Estimate

**With ALL optimizations:**
- Per heartbeat: .002-0.003 (Haiku model)
- Per day: .006-0.009 (3 checks)
- Per month: .18-0.27
- Per year: .16-3.24

**Compared to unoptimized:**
- Unoptimized: .80-72.00/month (Sonnet, every 30min, 24/7)
- Optimized: .18-0.27/month
- **Total savings: 99%** 

## How to Use

Clawbot will now:
1. Check email, calendar, git at 9am, 1pm, 5pm
2. Only alert you if something needs attention
3. Stay quiet outside work hours
4. Use the cheapest model (Haiku)

## Manual Override

To trigger a check anytime:


## Disable Heartbeats

To go back to  cost:


---
Configured: 2026-02-16
By: Kiro (Windows) for Clawbot (WSL)
