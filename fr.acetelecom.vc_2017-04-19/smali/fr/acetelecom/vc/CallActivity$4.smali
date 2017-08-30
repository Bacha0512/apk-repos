.class Lfr/acetelecom/vc/CallActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/CallActivity;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfr/acetelecom/vc/CallActivity;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/CallActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/CallActivity$4;->b:Lfr/acetelecom/vc/CallActivity;

    iput-object p2, p0, Lfr/acetelecom/vc/CallActivity$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$4;->b:Lfr/acetelecom/vc/CallActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/CallActivity;->d(Lfr/acetelecom/vc/CallActivity;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/CallActivity$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    const-string v0, "Call"

    iget-object v1, p0, Lfr/acetelecom/vc/CallActivity$4;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
