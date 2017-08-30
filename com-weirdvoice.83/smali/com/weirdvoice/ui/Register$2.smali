.class Lcom/weirdvoice/ui/Register$2;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/Register;->displayCountry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/Register;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/Register;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/Register$2;->this$0:Lcom/weirdvoice/ui/Register;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 265
    # getter for: Lcom/weirdvoice/ui/Register;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/ui/Register;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flag clicked"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/weirdvoice/ui/Register$2;->this$0:Lcom/weirdvoice/ui/Register;

    # getter for: Lcom/weirdvoice/ui/Register;->thiscontext:Landroid/content/Context;
    invoke-static {v1}, Lcom/weirdvoice/ui/Register;->access$2(Lcom/weirdvoice/ui/Register;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/weirdvoice/ui/CountryCodeTab;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .local v0, "goCtryCode":Landroid/content/Intent;
    const-string v1, "from"

    const-string v2, "Register"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v1, p0, Lcom/weirdvoice/ui/Register$2;->this$0:Lcom/weirdvoice/ui/Register;

    invoke-virtual {v1, v0}, Lcom/weirdvoice/ui/Register;->startActivity(Landroid/content/Intent;)V

    .line 269
    iget-object v1, p0, Lcom/weirdvoice/ui/Register$2;->this$0:Lcom/weirdvoice/ui/Register;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/Register;->finish()V

    .line 270
    return-void
.end method
