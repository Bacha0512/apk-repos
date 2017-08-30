.class public abstract Lcom/tapjoy/internal/do$a;
.super Lcom/tapjoy/internal/dh$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/tapjoy/internal/dk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/tapjoy/internal/dh$a;-><init>()V

    .line 131
    sget-object v0, Lcom/tapjoy/internal/dk;->b:Lcom/tapjoy/internal/dk;

    iput-object v0, p0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 87
    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/tapjoy/internal/do$a;->b()Lcom/tapjoy/internal/do$a;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/tapjoy/internal/do$a;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/tapjoy/internal/do$a;->b()Lcom/tapjoy/internal/do$a;

    move-result-object v0

    return-object v0
.end method
