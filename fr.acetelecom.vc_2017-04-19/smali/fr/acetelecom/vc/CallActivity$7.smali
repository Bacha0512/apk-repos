.class Lfr/acetelecom/vc/CallActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/acetelecom/vc/CallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/CallActivity;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/CallActivity;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/CallActivity$7;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$7;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/CallActivity;->i(Lfr/acetelecom/vc/CallActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
