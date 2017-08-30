.class Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$2;
.super Landroid/os/CountDownTimer;
.source "FragmentDailyBonus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->setBonusWait(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 119
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->setBonusReady()V
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->access$200(Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;)V

    .line 132
    return-void
.end method

.method public onTick(J)V
    .locals 11
    .param p1, "time"    # J

    .prologue
    .line 122
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%02d:%02d:%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 123
    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, p1, p2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 124
    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 122
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "hms":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->tv_bonus_wait_time:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->access$100(Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method
