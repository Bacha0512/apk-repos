.class Lcom/weirdvoice/ui/Register$1;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/Register;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/Register$1$RegisterTask;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/Register;

.field private final synthetic val$but_register:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/Register;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/Register$1;->this$0:Lcom/weirdvoice/ui/Register;

    iput-object p2, p0, Lcom/weirdvoice/ui/Register$1;->val$but_register:Landroid/widget/Button;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/Register$1;)Lcom/weirdvoice/ui/Register;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/weirdvoice/ui/Register$1;->this$0:Lcom/weirdvoice/ui/Register;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 109
    # getter for: Lcom/weirdvoice/ui/Register;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/ui/Register;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onClick()"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/weirdvoice/ui/Register$1;->val$but_register:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lcom/weirdvoice/ui/Register$1;->this$0:Lcom/weirdvoice/ui/Register;

    iget-object v2, p0, Lcom/weirdvoice/ui/Register$1;->this$0:Lcom/weirdvoice/ui/Register;

    # getter for: Lcom/weirdvoice/ui/Register;->thiscontext:Landroid/content/Context;
    invoke-static {v2}, Lcom/weirdvoice/ui/Register;->access$2(Lcom/weirdvoice/ui/Register;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/weirdvoice/ui/Register$1;->this$0:Lcom/weirdvoice/ui/Register;

    invoke-virtual {v3}, Lcom/weirdvoice/ui/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/weirdvoice/ui/Register$1;->this$0:Lcom/weirdvoice/ui/Register;

    invoke-virtual {v4}, Lcom/weirdvoice/ui/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v7, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/ui/Register;->access$4(Lcom/weirdvoice/ui/Register;Landroid/app/ProgressDialog;)V

    .line 112
    new-instance v1, Lcom/weirdvoice/toolbox/AndroidId;

    invoke-direct {v1}, Lcom/weirdvoice/toolbox/AndroidId;-><init>()V

    iget-object v2, p0, Lcom/weirdvoice/ui/Register$1;->this$0:Lcom/weirdvoice/ui/Register;

    # getter for: Lcom/weirdvoice/ui/Register;->thiscontext:Landroid/content/Context;
    invoke-static {v2}, Lcom/weirdvoice/ui/Register;->access$2(Lcom/weirdvoice/ui/Register;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/weirdvoice/toolbox/AndroidId;->getSipId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "username":Ljava/lang/String;
    new-instance v1, Lcom/weirdvoice/ui/Register$1$RegisterTask;

    invoke-direct {v1, p0}, Lcom/weirdvoice/ui/Register$1$RegisterTask;-><init>(Lcom/weirdvoice/ui/Register$1;)V

    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Lcom/weirdvoice/ui/Register$1$RegisterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 114
    return-void
.end method
