# HEARTBEAT.md - Cost-Optimized Proactive Checks

## Active Checks (Selective - Email + Calendar Only)

- Check email for urgent/unread messages
- Review calendar for events in next 24-48 hours
- Check git status on active projects (~/clawd/03-Projects/cloudoptima-ai)

## Schedule
- Run 3x per day: 9am, 1pm, 5pm (work hours only)
- Skip weekends unless urgent
- Batch all checks together to minimize API calls

## When to Alert
- Urgent email arrives
- Calendar event within 2 hours
- Uncommitted changes in active projects

## When to Stay Quiet
- No new emails
- No upcoming events
- Projects are clean
- Outside work hours (6pm-9am)

## Cost Control
- Batched checks (not every 30min)
- Selective monitoring (skip weather, social media)
- Work hours only (saves 60%)
- Use this with Haiku model for 90% cost savings

---
Last updated: 2026-02-16
