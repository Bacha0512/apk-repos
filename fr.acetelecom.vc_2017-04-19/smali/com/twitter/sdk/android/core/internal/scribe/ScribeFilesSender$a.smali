.class Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/internal/scribe/e;

.field private final b:La/a/a/a/a/b/m;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/e;La/a/a/a/a/b/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$a;->a:Lcom/twitter/sdk/android/core/internal/scribe/e;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$a;->b:La/a/a/a/a/b/m;

    return-void
.end method


# virtual methods
.method public a(Lb/t$a;)Lb/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lb/t$a;->a()Lb/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/z;->e()Lb/z$a;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$a;->a:Lcom/twitter/sdk/android/core/internal/scribe/e;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/internal/scribe/e;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$a;->a:Lcom/twitter/sdk/android/core/internal/scribe/e;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/internal/scribe/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lb/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;

    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$a;->b:La/a/a/a/a/b/m;

    invoke-virtual {v1}, La/a/a/a/a/b/m;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "X-Client-UUID"

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$a;->b:La/a/a/a/a/b/m;

    invoke-virtual {v2}, La/a/a/a/a/b/m;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;

    :cond_1
    const-string v1, "X-Twitter-Polling"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lb/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;

    invoke-virtual {v0}, Lb/z$a;->a()Lb/z;

    move-result-object v0

    invoke-interface {p1, v0}, Lb/t$a;->a(Lb/z;)Lb/ab;

    move-result-object v0

    return-object v0
.end method
