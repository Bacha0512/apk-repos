.class Lcom/weirdvoice/ui/help/HowDialDialog$1;
.super Ljava/lang/Object;
.source "HowDialDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/help/HowDialDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/help/HowDialDialog;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/help/HowDialDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/help/HowDialDialog$1;->this$0:Lcom/weirdvoice/ui/help/HowDialDialog;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/weirdvoice/ui/help/HowDialDialog$1;->this$0:Lcom/weirdvoice/ui/help/HowDialDialog;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/help/HowDialDialog;->dismiss()V

    .line 33
    return-void
.end method
