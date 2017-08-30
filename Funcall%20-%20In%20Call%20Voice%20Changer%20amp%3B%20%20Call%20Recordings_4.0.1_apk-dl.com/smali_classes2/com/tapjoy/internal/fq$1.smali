.class public final Lcom/tapjoy/internal/fq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fq;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/fq;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tapjoy/internal/fq$1;->a:Lcom/tapjoy/internal/fq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tapjoy/internal/fq$1;->a:Lcom/tapjoy/internal/fq;

    invoke-static {v0}, Lcom/tapjoy/internal/fq;->a(Lcom/tapjoy/internal/fq;)V

    .line 41
    return-void
.end method
