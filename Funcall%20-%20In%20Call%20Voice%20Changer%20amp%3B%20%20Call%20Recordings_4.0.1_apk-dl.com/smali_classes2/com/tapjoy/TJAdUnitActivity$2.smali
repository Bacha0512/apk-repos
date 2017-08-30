.class final Lcom/tapjoy/TJAdUnitActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitActivity;->showErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJAdUnitActivity;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitActivity;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitActivity$2;->a:Lcom/tapjoy/TJAdUnitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 354
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity$2;->a:Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitActivity;->handleClose()V

    .line 355
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 356
    return-void
.end method
