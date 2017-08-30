.class public Lcom/tapjoy/internal/TJAwardCurrencyListenerNative;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/TJAwardCurrencyListener;


# instance fields
.field private final a:J


# direct methods
.method private constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-wide p1, p0, Lcom/tapjoy/internal/TJAwardCurrencyListenerNative;->a:J

    return-void
.end method

.method static create(J)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/tapjoy/internal/ep;
    .end annotation

    new-instance v0, Lcom/tapjoy/internal/TJAwardCurrencyListenerNative;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/TJAwardCurrencyListenerNative;-><init>(J)V

    return-object v0
.end method

.method private static native onAwardCurrencyResponseFailureNative(JLjava/lang/String;)V
.end method

.method private static native onAwardCurrencyResponseNative(JLjava/lang/String;I)V
.end method


# virtual methods
.method public onAwardCurrencyResponse(Ljava/lang/String;I)V
    .locals 2

    iget-wide v0, p0, Lcom/tapjoy/internal/TJAwardCurrencyListenerNative;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/tapjoy/internal/TJAwardCurrencyListenerNative;->onAwardCurrencyResponseNative(JLjava/lang/String;I)V

    return-void
.end method

.method public onAwardCurrencyResponseFailure(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/tapjoy/internal/TJAwardCurrencyListenerNative;->a:J

    invoke-static {v0, v1, p1}, Lcom/tapjoy/internal/TJAwardCurrencyListenerNative;->onAwardCurrencyResponseFailureNative(JLjava/lang/String;)V

    return-void
.end method
