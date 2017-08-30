.class public Lcom/weirdvoice/ui/incall/locker/ScreenLocker;
.super Landroid/widget/RelativeLayout;
.source "ScreenLocker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/incall/locker/ScreenLocker$LockTimerTask;,
        Lcom/weirdvoice/ui/incall/locker/ScreenLocker$ShowHideHandler;
    }
.end annotation


# static fields
.field private static final HIDE_LOCKER:I = 0x1

.field private static final SHOW_LOCKER:I = 0x0

.field public static final WAIT_BEFORE_LOCK_LONG:I = 0x2710

.field public static final WAIT_BEFORE_LOCK_SHORT:I = 0x1f4

.field public static final WAIT_BEFORE_LOCK_START:I = 0x1388


# instance fields
.field private activity:Landroid/app/Activity;

.field private handler:Landroid/os/Handler;

.field private lockTimer:Ljava/util/Timer;

.field private onLRChoiceListener:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

.field private stab:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    new-instance v0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker$ShowHideHandler;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker$ShowHideHandler;-><init>(Lcom/weirdvoice/ui/incall/locker/ScreenLocker;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->handler:Landroid/os/Handler;

    .line 62
    invoke-virtual {p0, p0}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/incall/locker/ScreenLocker;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private clearLockTasks()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->lockTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->lockTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 172
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->lockTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->lockTimer:Ljava/util/Timer;

    .line 175
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->stab:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->stab:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->resetView()V

    .line 101
    :cond_0
    return-void
.end method

.method private updateTabLayout(IIII)V
    .locals 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 80
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->stab:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;

    if-eqz v4, :cond_0

    .line 81
    sub-int v2, p3, p1

    .line 82
    .local v2, "parentWidth":I
    sub-int v1, p4, p2

    .line 83
    .local v1, "parentHeight":I
    mul-int/lit8 v4, v1, 0x3

    div-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->stab:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;

    invoke-virtual {v5}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 84
    .local v3, "top":I
    mul-int/lit8 v4, v1, 0x3

    div-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->stab:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;

    invoke-virtual {v5}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v0, v4, v5

    .line 85
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->stab:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3, v2, v0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->layout(IIII)V

    .line 87
    .end local v0    # "bottom":I
    .end local v1    # "parentHeight":I
    .end local v2    # "parentWidth":I
    .end local v3    # "top":I
    :cond_0
    return-void
.end method


# virtual methods
.method public delayedLock(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->lockTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->lockTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 138
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->lockTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 139
    iput-object v2, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->lockTimer:Ljava/util/Timer;

    .line 142
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const-string v1, "ScreenLock-timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->lockTimer:Ljava/util/Timer;

    .line 144
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->lockTimer:Ljava/util/Timer;

    new-instance v1, Lcom/weirdvoice/ui/incall/locker/ScreenLocker$LockTimerTask;

    invoke-direct {v1, p0, v2}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker$LockTimerTask;-><init>(Lcom/weirdvoice/ui/incall/locker/ScreenLocker;Lcom/weirdvoice/ui/incall/locker/ScreenLocker$LockTimerTask;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 145
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 159
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 162
    .local v0, "win":Landroid/view/Window;
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 163
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 165
    .end local v0    # "win":Landroid/view/Window;
    :cond_0
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->clearLockTasks()V

    .line 166
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->reset()V

    .line 167
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 67
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 68
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->updateTabLayout(IIII)V

    .line 69
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "anActivity"    # Landroid/app/Activity;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->activity:Landroid/app/Activity;

    .line 91
    return-void
.end method

.method public setOnLeftRightListener(Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;)V
    .locals 0
    .param p1, "l"    # Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->onLRChoiceListener:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

    .line 95
    return-void
.end method

.method public setVisibility(I)V
    .locals 6
    .param p1, "visibility"    # I

    .prologue
    const/4 v3, -0x1

    .line 110
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 112
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->stab:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->stab:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;

    .line 114
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->stab:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;

    invoke-virtual {v1, v0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->stab:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;

    const v2, 0x7f0c0048

    invoke-virtual {v1, v2}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->setLeftHintText(I)V

    .line 118
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->stab:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;

    const v2, 0x7f0202bf

    const v3, 0x7f0203f0

    const v4, 0x7f0203e0

    const v5, 0x7f0203e8

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->setLeftTabResources(IIII)V

    .line 119
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->stab:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;

    const v2, 0x7f0c003a

    invoke-virtual {v1, v2}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->setRightHintText(I)V

    .line 120
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->stab:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;

    iget-object v2, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->onLRChoiceListener:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

    invoke-virtual {v1, v2}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->setOnLeftRightListener(Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;)V

    .line 122
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->stab:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->addView(Landroid/view/View;)V

    .line 123
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->getBottom()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->updateTabLayout(IIII)V

    .line 125
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 149
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 152
    .local v0, "win":Landroid/view/Window;
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 153
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 155
    .end local v0    # "win":Landroid/view/Window;
    :cond_0
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->clearLockTasks()V

    .line 156
    return-void
.end method

.method public tearDown()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->clearLockTasks()V

    .line 179
    return-void
.end method
