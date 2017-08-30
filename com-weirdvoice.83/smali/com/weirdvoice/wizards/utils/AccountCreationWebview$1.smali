.class Lcom/weirdvoice/wizards/utils/AccountCreationWebview$1;
.super Landroid/webkit/WebChromeClient;
.source "AccountCreationWebview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/wizards/utils/AccountCreationWebview;-><init>(Lcom/weirdvoice/wizards/BasePrefsWizard;Ljava/lang/String;Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;


# direct methods
.method constructor <init>(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$1;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    .line 77
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 79
    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$1;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    # getter for: Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->access$5(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$1;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    # getter for: Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->access$5(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$1;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebview;

    # getter for: Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->access$5(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
