.class public Lcom/rami_bar/fun_call/activities/ActivityPopup;
.super Landroid/app/Activity;
.source "ActivityPopup.java"


# instance fields
.field private bt_popup_approve:Landroid/widget/Button;

.field private bt_popup_decline:Landroid/widget/Button;

.field private popup:Lcom/rami_bar/fun_call/objects/Popup;

.field private tv_popup_massage:Landroid/widget/TextView;

.field private tv_popup_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getViewsIDs()V
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f100151

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->tv_popup_massage:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f100150

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->tv_popup_title:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f100153

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->bt_popup_approve:Landroid/widget/Button;

    .line 59
    const v0, 0x7f100152

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->bt_popup_decline:Landroid/widget/Button;

    .line 60
    return-void
.end method

.method private setDataToViews()V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityPopup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/rami_bar/fun_call/utiles/Constants;->INTENT_POPUP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/Popup;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->popup:Lcom/rami_bar/fun_call/objects/Popup;

    .line 38
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->popup:Lcom/rami_bar/fun_call/objects/Popup;

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->tv_popup_massage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->popup:Lcom/rami_bar/fun_call/objects/Popup;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/Popup;->messageText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->tv_popup_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->popup:Lcom/rami_bar/fun_call/objects/Popup;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/Popup;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->bt_popup_approve:Landroid/widget/Button;

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->popup:Lcom/rami_bar/fun_call/objects/Popup;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/Popup;->approveButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->popup:Lcom/rami_bar/fun_call/objects/Popup;

    iget-object v0, v0, Lcom/rami_bar/fun_call/objects/Popup;->declineButtonText:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->bt_popup_decline:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 52
    :goto_1
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->tv_popup_massage:Landroid/widget/TextView;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->bt_popup_decline:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->bt_popup_decline:Landroid/widget/Button;

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->popup:Lcom/rami_bar/fun_call/objects/Popup;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/Popup;->declineButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public onApprove(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/rami_bar/fun_call/utiles/Constants;->INTENT_POPUP_ACTION:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/rami_bar/fun_call/activities/ActivityPopup;->setResult(ILandroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityPopup;->finish()V

    .line 79
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPopup;->popup:Lcom/rami_bar/fun_call/objects/Popup;

    iget-boolean v0, v0, Lcom/rami_bar/fun_call/objects/Popup;->cancelable:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 93
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f040038

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityPopup;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityPopup;->getViewsIDs()V

    .line 32
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityPopup;->setDataToViews()V

    .line 33
    return-void
.end method

.method public onDecline(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/rami_bar/fun_call/utiles/Constants;->INTENT_POPUP_ACTION:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/rami_bar/fun_call/activities/ActivityPopup;->setResult(ILandroid/content/Intent;)V

    .line 85
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityPopup;->finish()V

    .line 86
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 65
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 66
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 71
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 72
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method
