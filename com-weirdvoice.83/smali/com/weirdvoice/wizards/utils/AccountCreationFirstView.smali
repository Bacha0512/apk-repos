.class public Lcom/weirdvoice/wizards/utils/AccountCreationFirstView;
.super Landroid/widget/RelativeLayout;
.source "AccountCreationFirstView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/wizards/utils/AccountCreationFirstView$OnAccountCreationFirstViewListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/weirdvoice/wizards/utils/AccountCreationFirstView$OnAccountCreationFirstViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/weirdvoice/wizards/utils/AccountCreationFirstView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/weirdvoice/wizards/utils/AccountCreationFirstView;->mListener:Lcom/weirdvoice/wizards/utils/AccountCreationFirstView$OnAccountCreationFirstViewListener;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030069

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    invoke-direct {p0}, Lcom/weirdvoice/wizards/utils/AccountCreationFirstView;->bindElements()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/weirdvoice/wizards/utils/AccountCreationFirstView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method private bindElements()V
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f0b00ae

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/utils/AccountCreationFirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f0b00a4

    invoke-virtual {p0, v0}, Lcom/weirdvoice/wizards/utils/AccountCreationFirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/weirdvoice/wizards/utils/AccountCreationFirstView;->mListener:Lcom/weirdvoice/wizards/utils/AccountCreationFirstView$OnAccountCreationFirstViewListener;

    if-nez v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 65
    .local v0, "id":I
    const v1, 0x7f0b00ae

    if-ne v0, v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/weirdvoice/wizards/utils/AccountCreationFirstView;->mListener:Lcom/weirdvoice/wizards/utils/AccountCreationFirstView$OnAccountCreationFirstViewListener;

    invoke-interface {v1}, Lcom/weirdvoice/wizards/utils/AccountCreationFirstView$OnAccountCreationFirstViewListener;->onCreateAccountRequested()V

    goto :goto_0

    .line 67
    :cond_2
    const v1, 0x7f0b00a4

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/weirdvoice/wizards/utils/AccountCreationFirstView;->mListener:Lcom/weirdvoice/wizards/utils/AccountCreationFirstView$OnAccountCreationFirstViewListener;

    invoke-interface {v1}, Lcom/weirdvoice/wizards/utils/AccountCreationFirstView$OnAccountCreationFirstViewListener;->onEditAccountRequested()V

    goto :goto_0
.end method

.method public setOnAccountCreationFirstViewListener(Lcom/weirdvoice/wizards/utils/AccountCreationFirstView$OnAccountCreationFirstViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/weirdvoice/wizards/utils/AccountCreationFirstView$OnAccountCreationFirstViewListener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/weirdvoice/wizards/utils/AccountCreationFirstView;->mListener:Lcom/weirdvoice/wizards/utils/AccountCreationFirstView$OnAccountCreationFirstViewListener;

    .line 74
    return-void
.end method
