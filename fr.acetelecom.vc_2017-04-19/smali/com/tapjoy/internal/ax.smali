.class public abstract Lcom/tapjoy/internal/ax;
.super Ljava/util/AbstractQueue;

# interfaces
.implements Lcom/tapjoy/internal/bb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/ax$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ax$1;-><init>(Lcom/tapjoy/internal/ax;)V

    return-object v0
.end method
