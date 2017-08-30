.class public Lcom/weirdvoice/ui/HelpMe;
.super Landroid/app/Dialog;
.source "HelpMe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/HelpMe$KOListener;,
        Lcom/weirdvoice/ui/HelpMe$OKListener;,
        Lcom/weirdvoice/ui/HelpMe$PleasehelpTask;,
        Lcom/weirdvoice/ui/HelpMe$ReadyListener;
    }
.end annotation


# instance fields
.field private LOGTAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field etName:Landroid/widget/EditText;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v0, "HelpMe"

    iput-object v0, p0, Lcom/weirdvoice/ui/HelpMe;->LOGTAG:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/weirdvoice/ui/HelpMe;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/weirdvoice/ui/HelpMe;->username:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/HelpMe;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/weirdvoice/ui/HelpMe;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/weirdvoice/ui/HelpMe;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/weirdvoice/ui/HelpMe;->username:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/weirdvoice/ui/HelpMe;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/weirdvoice/ui/HelpMe;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v2, 0x7f030050

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/HelpMe;->setContentView(I)V

    .line 49
    iget-object v2, p0, Lcom/weirdvoice/ui/HelpMe;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0279

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/HelpMe;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    const v2, 0x7f0b0127

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/HelpMe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 51
    .local v1, "buttonOK":Landroid/widget/Button;
    new-instance v2, Lcom/weirdvoice/ui/HelpMe$OKListener;

    invoke-direct {v2, p0, v4}, Lcom/weirdvoice/ui/HelpMe$OKListener;-><init>(Lcom/weirdvoice/ui/HelpMe;Lcom/weirdvoice/ui/HelpMe$OKListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v2, 0x7f0b0126

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/HelpMe;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 53
    .local v0, "buttonKO":Landroid/widget/Button;
    new-instance v2, Lcom/weirdvoice/ui/HelpMe$KOListener;

    invoke-direct {v2, p0, v4}, Lcom/weirdvoice/ui/HelpMe$KOListener;-><init>(Lcom/weirdvoice/ui/HelpMe;Lcom/weirdvoice/ui/HelpMe$KOListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method
