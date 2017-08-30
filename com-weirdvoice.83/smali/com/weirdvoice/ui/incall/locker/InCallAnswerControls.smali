.class public Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;
.super Landroid/widget/RelativeLayout;
.source "InCallAnswerControls.java"

# interfaces
.implements Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;


# static fields
.field private static final LOCKER_BUTTON:I = 0x2

.field private static final LOCKER_GLOWPAD:I = 0x3

.field private static final LOCKER_SLIDINGTAB:I = 0x1

.field private static final MODE_LOCKER:I = 0x0

.field private static final MODE_NO_ACTION:I = 0x1

.field private static final THIS_FILE:Ljava/lang/String; = "InCallAnswerControls"


# instance fields
.field private controlMode:I

.field private currentCall:Lcom/weirdvoice/api/SipCallSession;

.field private lockerWidget:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;

.field private lockerWidgetType:I

.field private onTriggerListener:Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    const/16 v6, 0xe

    const/4 v5, 0x2

    const/4 v4, 0x3

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    iput v4, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidgetType:I

    .line 76
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->setGravity(I)V

    .line 77
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 78
    const-string v2, "unlocker_type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceIntegerValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 79
    .local v1, "unlockerType":I
    if-lez v1, :cond_0

    if-le v1, v4, :cond_4

    .line 80
    :cond_0
    invoke-static {}, Lcom/weirdvoice/utils/accessibility/AccessibilityWrapper;->getInstance()Lcom/weirdvoice/utils/accessibility/AccessibilityWrapper;

    move-result-object v0

    .line 81
    .local v0, "accessibilityManager":Lcom/weirdvoice/utils/accessibility/AccessibilityWrapper;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/weirdvoice/utils/accessibility/AccessibilityWrapper;->init(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v0}, Lcom/weirdvoice/utils/accessibility/AccessibilityWrapper;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    iput v5, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidgetType:I

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/weirdvoice/utils/Compatibility;->isTabletScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    invoke-static {v6}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 87
    iput v5, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidgetType:I

    .line 92
    .end local v0    # "accessibilityManager":Lcom/weirdvoice/utils/accessibility/AccessibilityWrapper;
    :cond_2
    :goto_0
    iget v2, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidgetType:I

    if-ne v2, v4, :cond_3

    invoke-static {v6}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 93
    const/4 v2, 0x1

    iput v2, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidgetType:I

    .line 97
    .end local v1    # "unlockerType":I
    :cond_3
    return-void

    .line 90
    .restart local v1    # "unlockerType":I
    :cond_4
    iput v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidgetType:I

    goto :goto_0
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .param p1, "whichHandle"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->onTriggerListener:Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->onTriggerListener:Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->currentCall:Lcom/weirdvoice/api/SipCallSession;

    invoke-interface {v0, p1, v1}, Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;->onTrigger(ILcom/weirdvoice/api/SipCallSession;)V

    .line 190
    :cond_0
    return-void
.end method

.method private setCallLockerVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const/4 v3, -0x2

    .line 108
    if-nez p1, :cond_4

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->controlMode:I

    .line 109
    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->setVisibility(I)V

    .line 110
    if-nez p1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidget:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;

    if-nez v1, :cond_2

    .line 113
    iget v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidgetType:I

    packed-switch v1, :pswitch_data_0

    .line 126
    :goto_1
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidget:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;

    invoke-interface {v1, p0}, Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;->setOnLeftRightListener(Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;)V

    .line 127
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidget:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;

    sget-object v2, Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$TypeOfLock;->CALL:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$TypeOfLock;

    invoke-interface {v1, v2}, Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;->setTypeOfLock(Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$TypeOfLock;)V

    .line 128
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidget:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;

    invoke-interface {v1}, Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;->getLayoutingWidth()I

    move-result v1

    iget-object v2, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidget:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;

    invoke-interface {v2}, Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;->getLayoutingHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 129
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidget:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;

    invoke-interface {v1}, Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;->getLayoutingHeight()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 130
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidget:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;

    invoke-interface {v1}, Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;->getLayoutingWidth()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 131
    :cond_0
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidget:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidget:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidget:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;

    invoke-interface {v1, p1}, Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidget:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;

    invoke-interface {v1}, Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;->resetView()V

    .line 141
    :cond_3
    return-void

    .line 108
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 115
    :pswitch_0
    new-instance v1, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidget:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;

    goto :goto_1

    .line 118
    :pswitch_1
    new-instance v1, Lcom/weirdvoice/ui/incall/locker/buttons/AlternateUnlocker;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/weirdvoice/ui/incall/locker/buttons/AlternateUnlocker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidget:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;

    goto :goto_1

    .line 121
    :pswitch_2
    new-instance v1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->lockerWidget:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;

    goto :goto_1

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public applyTheme(Lcom/weirdvoice/utils/Theme;)V
    .locals 0
    .param p1, "t"    # Lcom/weirdvoice/utils/Theme;

    .prologue
    .line 241
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->controlMode:I

    .line 104
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 219
    const-string v1, "InCallAnswerControls"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Hey you hit the key : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->controlMode:I

    if-nez v1, :cond_0

    .line 221
    packed-switch p1, :pswitch_data_0

    .line 234
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 223
    :pswitch_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->dispatchTriggerEvent(I)V

    goto :goto_0

    .line 227
    :pswitch_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->dispatchTriggerEvent(I)V

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLeftRightChoice(I)V
    .locals 3
    .param p1, "whichHandle"    # I

    .prologue
    .line 195
    const-string v0, "InCallAnswerControls"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Call controls receive info from slider "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->controlMode:I

    if-eqz v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 202
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 204
    :pswitch_0
    const-string v0, "InCallAnswerControls"

    const-string v1, "We take the call"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->dispatchTriggerEvent(I)V

    goto :goto_0

    .line 208
    :pswitch_1
    const-string v0, "InCallAnswerControls"

    const-string v1, "We clear the call"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->dispatchTriggerEvent(I)V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCallState(Lcom/weirdvoice/api/SipCallSession;)V
    .locals 4
    .param p1, "callInfo"    # Lcom/weirdvoice/api/SipCallSession;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 145
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->currentCall:Lcom/weirdvoice/api/SipCallSession;

    .line 147
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->currentCall:Lcom/weirdvoice/api/SipCallSession;

    if-nez v1, :cond_0

    .line 148
    invoke-direct {p0, v2}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->setCallLockerVisibility(I)V

    .line 174
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->currentCall:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->getCallState()I

    move-result v0

    .line 153
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 166
    :pswitch_0
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->currentCall:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    invoke-direct {p0, v3}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->setCallLockerVisibility(I)V

    goto :goto_0

    .line 155
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->setCallLockerVisibility(I)V

    goto :goto_0

    .line 162
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->setCallLockerVisibility(I)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-direct {p0, v2}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->setCallLockerVisibility(I)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setOnTriggerListener(Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;)V
    .locals 0
    .param p1, "listener"    # Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->onTriggerListener:Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;

    .line 184
    return-void
.end method
