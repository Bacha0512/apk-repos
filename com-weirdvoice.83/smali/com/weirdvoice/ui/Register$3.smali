.class Lcom/weirdvoice/ui/Register$3;
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
    iput-object p1, p0, Lcom/weirdvoice/ui/Register$3;->this$0:Lcom/weirdvoice/ui/Register;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 277
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/weirdvoice/ui/Register$3;->this$0:Lcom/weirdvoice/ui/Register;

    # getter for: Lcom/weirdvoice/ui/Register;->thiscontext:Landroid/content/Context;
    invoke-static {v1}, Lcom/weirdvoice/ui/Register;->access$2(Lcom/weirdvoice/ui/Register;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/weirdvoice/ui/Register$3;->this$0:Lcom/weirdvoice/ui/Register;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c024b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 279
    iget-object v1, p0, Lcom/weirdvoice/ui/Register$3;->this$0:Lcom/weirdvoice/ui/Register;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c025f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 280
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 281
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 282
    const v1, 0x104000a

    new-instance v2, Lcom/weirdvoice/ui/Register$3$1;

    invoke-direct {v2, p0}, Lcom/weirdvoice/ui/Register$3$1;-><init>(Lcom/weirdvoice/ui/Register$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 286
    return-void
.end method
