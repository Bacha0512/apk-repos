.class Lfr/acetelecom/vc/CallActivity$5$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/CallActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/CallActivity$5;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/CallActivity$5;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/CallActivity$5$1;->a:Lfr/acetelecom/vc/CallActivity$5;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$5$1;->a:Lfr/acetelecom/vc/CallActivity$5;

    iget-object v0, v0, Lfr/acetelecom/vc/CallActivity$5;->a:Lfr/acetelecom/vc/CallActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/CallActivity;->g(Lfr/acetelecom/vc/CallActivity;)V

    invoke-virtual {p0}, Lfr/acetelecom/vc/CallActivity$5$1;->cancel()Z

    return-void
.end method
