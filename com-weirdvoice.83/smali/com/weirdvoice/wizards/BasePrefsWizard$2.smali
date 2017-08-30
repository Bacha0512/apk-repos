.class Lcom/weirdvoice/wizards/BasePrefsWizard$2;
.super Ljava/lang/Object;
.source "BasePrefsWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/wizards/BasePrefsWizard;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/wizards/BasePrefsWizard;


# direct methods
.method constructor <init>(Lcom/weirdvoice/wizards/BasePrefsWizard;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/wizards/BasePrefsWizard$2;->this$0:Lcom/weirdvoice/wizards/BasePrefsWizard;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/weirdvoice/wizards/BasePrefsWizard$2;->this$0:Lcom/weirdvoice/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Lcom/weirdvoice/wizards/BasePrefsWizard;->saveAndFinish()V

    .line 94
    return-void
.end method
