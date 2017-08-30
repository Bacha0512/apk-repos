.class public Lcom/rami_bar/fun_call/activities/ActivityLikePopup;
.super Landroid/app/Activity;
.source "ActivityLikePopup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getViewsIDs()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method private setDataToViews()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method


# virtual methods
.method public onApprove(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/rami_bar/fun_call/utiles/Constants;->INTENT_POPUP_ACTION:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/rami_bar/fun_call/activities/ActivityLikePopup;->setResult(ILandroid/content/Intent;)V

    .line 48
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityLikePopup;->finish()V

    .line 49
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f040036

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityLikePopup;->setContentView(I)V

    .line 20
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityLikePopup;->getViewsIDs()V

    .line 22
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityLikePopup;->setDataToViews()V

    .line 23
    return-void
.end method

.method public onDecline(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/rami_bar/fun_call/utiles/Constants;->INTENT_POPUP_ACTION:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/rami_bar/fun_call/activities/ActivityLikePopup;->setResult(ILandroid/content/Intent;)V

    .line 55
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityLikePopup;->finish()V

    .line 56
    return-void
.end method

.method public onLater(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityLikePopup;->finish()V

    .line 60
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 35
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 36
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 41
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 42
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method
