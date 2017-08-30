.class public final Lcom/fyber/ads/banners/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/fyber/ads/banners/a/a;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/fyber/ads/internal/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fyber/ads/banners/a/a;

    invoke-direct {v0}, Lcom/fyber/ads/banners/a/a;-><init>()V

    sput-object v0, Lcom/fyber/ads/banners/a/a;->a:Lcom/fyber/ads/banners/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/fyber/ads/internal/c;->a:Lcom/fyber/ads/internal/c;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fyber/ads/banners/a/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a()Lcom/fyber/ads/internal/c;
    .locals 1

    sget-object v0, Lcom/fyber/ads/banners/a/a;->a:Lcom/fyber/ads/banners/a/a;

    iget-object v0, v0, Lcom/fyber/ads/banners/a/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/internal/c;

    return-object v0
.end method

.method public static a(Lcom/fyber/ads/internal/c;)Z
    .locals 1

    sget-object v0, Lcom/fyber/ads/banners/a/a;->a:Lcom/fyber/ads/banners/a/a;

    iget-object v0, v0, Lcom/fyber/ads/banners/a/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method
