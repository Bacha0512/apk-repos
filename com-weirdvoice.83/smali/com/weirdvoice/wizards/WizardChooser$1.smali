.class Lcom/weirdvoice/wizards/WizardChooser$1;
.super Ljava/lang/Object;
.source "WizardChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/wizards/WizardChooser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/wizards/WizardChooser;


# direct methods
.method constructor <init>(Lcom/weirdvoice/wizards/WizardChooser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/wizards/WizardChooser$1;->this$0:Lcom/weirdvoice/wizards/WizardChooser;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/weirdvoice/wizards/WizardChooser$1;->this$0:Lcom/weirdvoice/wizards/WizardChooser;

    invoke-virtual {v0}, Lcom/weirdvoice/wizards/WizardChooser;->finish()V

    .line 78
    return-void
.end method
