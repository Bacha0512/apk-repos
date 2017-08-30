.class Lcom/weirdvoice/ui/Myaccount$5;
.super Ljava/lang/Object;
.source "Myaccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/Myaccount;->displayCountry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/Myaccount;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/Myaccount;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/Myaccount$5;->this$0:Lcom/weirdvoice/ui/Myaccount;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    const-string v1, "MyAccount"

    const-string v2, "flag clicked"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/weirdvoice/ui/Myaccount$5;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/weirdvoice/ui/Myaccount;->access$5(Lcom/weirdvoice/ui/Myaccount;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/weirdvoice/ui/CountryCodeTab;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v0, "goCtryCode":Landroid/content/Intent;
    const-string v1, "from"

    const-string v2, "Myaccount"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    iget-object v1, p0, Lcom/weirdvoice/ui/Myaccount$5;->this$0:Lcom/weirdvoice/ui/Myaccount;

    invoke-virtual {v1, v0}, Lcom/weirdvoice/ui/Myaccount;->startActivity(Landroid/content/Intent;)V

    .line 246
    return-void
.end method
