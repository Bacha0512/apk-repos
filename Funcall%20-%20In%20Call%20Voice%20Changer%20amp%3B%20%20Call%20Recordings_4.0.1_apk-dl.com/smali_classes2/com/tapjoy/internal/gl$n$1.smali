.class final Lcom/tapjoy/internal/gl$n$1;
.super Lcom/tapjoy/internal/di;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9358
    invoke-direct {p0}, Lcom/tapjoy/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9358
    .line 10363
    new-instance v0, Lcom/tapjoy/internal/gl$n;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/tapjoy/internal/gl$n;-><init>(Lcom/tapjoy/internal/dl;Lcom/tapjoy/internal/dn;B)V

    .line 9358
    return-object v0
.end method
