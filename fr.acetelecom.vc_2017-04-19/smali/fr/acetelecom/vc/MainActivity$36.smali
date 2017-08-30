.class Lfr/acetelecom/vc/MainActivity$36;
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

    iput-object p1, p0, Lfr/acetelecom/vc/MainActivity$36;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "VC"

    const-string v1, "call Timer_TickDigitLogin"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/digits/sdk/android/i$a;

    invoke-direct {v0}, Lcom/digits/sdk/android/i$a;-><init>()V

    iget-object v1, p0, Lfr/acetelecom/vc/MainActivity$36;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v1}, Lfr/acetelecom/vc/MainActivity;->D(Lfr/acetelecom/vc/MainActivity;)Lcom/digits/sdk/android/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/i$a;->a(Lcom/digits/sdk/android/g;)Lcom/digits/sdk/android/i$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/MainActivity$36;->a:Lfr/acetelecom/vc/MainActivity;

    invoke-static {v2}, Lfr/acetelecom/vc/MainActivity;->a(Lfr/acetelecom/vc/MainActivity;)Lfr/acetelecom/vc/b;

    move-result-object v2

    iget-object v2, v2, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    const-string v3, "[^0-9]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/i$a;->a(Ljava/lang/String;)Lcom/digits/sdk/android/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/i$a;->a()Lcom/digits/sdk/android/i;

    move-result-object v0

    invoke-static {v0}, Lcom/digits/sdk/android/ac;->a(Lcom/digits/sdk/android/i;)V

    return-void
.end method
