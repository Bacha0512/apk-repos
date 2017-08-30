.class Lfr/acetelecom/vc/MainActivity$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/acetelecom/vc/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/MainActivity;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity$11;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$11;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/MainActivity;->s(Lfr/acetelecom/vc/MainActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$11;->a:Lfr/acetelecom/vc/MainActivity;

    const-string v1, "tapjoyd"

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity$11;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v2}, Lfr/acetelecom/vc/MainActivity;->s(Lfr/acetelecom/vc/MainActivity;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    invoke-static {v0, v1, v2}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/MainActivity$11;->a:Lfr/acetelecom/vc/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfr/acetelecom/vc/MainActivity;->b(Lfr/acetelecom/vc/MainActivity;I)I

    return-void
.end method
