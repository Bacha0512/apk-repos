.class Lcom/weirdvoice/widgets/AccountChooserButton$AccountStatusContentObserver;
.super Landroid/database/ContentObserver;
.source "AccountChooserButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/widgets/AccountChooserButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountStatusContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/widgets/AccountChooserButton;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/widgets/AccountChooserButton;Landroid/os/Handler;)V
    .locals 0
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/weirdvoice/widgets/AccountChooserButton$AccountStatusContentObserver;->this$0:Lcom/weirdvoice/widgets/AccountChooserButton;

    .line 145
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 146
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 149
    const-string v0, "AccountChooserButton"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accounts status.onChange( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/weirdvoice/widgets/AccountChooserButton$AccountStatusContentObserver;->this$0:Lcom/weirdvoice/widgets/AccountChooserButton;

    # invokes: Lcom/weirdvoice/widgets/AccountChooserButton;->updateRegistration()V
    invoke-static {v0}, Lcom/weirdvoice/widgets/AccountChooserButton;->access$0(Lcom/weirdvoice/widgets/AccountChooserButton;)V

    .line 151
    return-void
.end method
