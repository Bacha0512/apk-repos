.class public final Lcom/tapjoy/internal/gr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/tapjoy/internal/bm;


# instance fields
.field public final a:Lcom/tapjoy/internal/gt;

.field public final b:Landroid/graphics/Point;

.field public final c:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/tapjoy/internal/gr$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gr$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gr;->d:Lcom/tapjoy/internal/bm;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/gt;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/tapjoy/internal/gr;->a:Lcom/tapjoy/internal/gt;

    .line 19
    iput-object p2, p0, Lcom/tapjoy/internal/gr;->b:Landroid/graphics/Point;

    .line 20
    iput-object p3, p0, Lcom/tapjoy/internal/gr;->c:Landroid/graphics/Point;

    .line 21
    return-void
.end method
