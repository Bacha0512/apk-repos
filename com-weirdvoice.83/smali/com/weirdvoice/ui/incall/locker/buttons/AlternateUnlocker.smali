.class public Lcom/weirdvoice/ui/incall/locker/buttons/AlternateUnlocker;
.super Landroid/widget/LinearLayout;
.source "AlternateUnlocker.java"

# interfaces
.implements Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private onTriggerListener:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/weirdvoice/ui/incall/locker/buttons/AlternateUnlocker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/weirdvoice/ui/incall/locker/buttons/AlternateUnlocker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/locker/buttons/AlternateUnlocker;->setOrientation(I)V

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 64
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03001f

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    const v2, 0x7f0b0056

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/locker/buttons/AlternateUnlocker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "btn":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v2, 0x7f0b0054

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/locker/buttons/AlternateUnlocker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method


# virtual methods
.method public applyTargetTitles(I)V
    .locals 3
    .param p1, "resArrayTitles"    # I

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/buttons/AlternateUnlocker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/weirdvoice/ui/incall/locker/LeftRightChooserUtils;->loadTargetsDescriptions(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 99
    .local v0, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v1, 0x7f0b0055

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/incall/locker/buttons/AlternateUnlocker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v1, 0x7f0b0057

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/incall/locker/buttons/AlternateUnlocker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public getLayoutingHeight()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, -0x1

    return v0
.end method

.method public getLayoutingWidth()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, -0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 83
    .local v0, "id":I
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/buttons/AlternateUnlocker;->onTriggerListener:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

    if-eqz v1, :cond_0

    .line 84
    const v1, 0x7f0b0056

    if-ne v0, v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/buttons/AlternateUnlocker;->onTriggerListener:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;->onLeftRightChoice(I)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const v1, 0x7f0b0054

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/buttons/AlternateUnlocker;->onTriggerListener:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;->onLeftRightChoice(I)V

    goto :goto_0
.end method

.method public resetView()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public setOnLeftRightListener(Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;)V
    .locals 0
    .param p1, "l"    # Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/locker/buttons/AlternateUnlocker;->onTriggerListener:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

    .line 77
    return-void
.end method

.method public setTypeOfLock(Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$TypeOfLock;)V
    .locals 1
    .param p1, "lock"    # Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$TypeOfLock;

    .prologue
    .line 109
    sget-object v0, Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$TypeOfLock;->CALL:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$TypeOfLock;

    if-ne p1, v0, :cond_0

    .line 110
    const v0, 0x7f0e0007

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/locker/buttons/AlternateUnlocker;->applyTargetTitles(I)V

    .line 112
    :cond_0
    return-void
.end method
