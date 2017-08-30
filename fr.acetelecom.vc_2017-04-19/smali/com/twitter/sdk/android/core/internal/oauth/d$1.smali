.class Lcom/twitter/sdk/android/core/internal/oauth/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lb/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/internal/oauth/d;-><init>(Lcom/twitter/sdk/android/core/o;Ljavax/net/ssl/SSLSocketFactory;Lcom/twitter/sdk/android/core/internal/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/internal/oauth/d;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/d;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/d$1;->a:Lcom/twitter/sdk/android/core/internal/oauth/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/oauth/d$1;->a:Lcom/twitter/sdk/android/core/internal/oauth/d;

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/internal/oauth/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/z$a;->a()Lb/z;

    move-result-object v0

    invoke-interface {p1, v0}, Lb/t$a;->a(Lb/z;)Lb/ab;

    move-result-object v0

    return-object v0
.end method
