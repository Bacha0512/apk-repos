.class public final Lcom/tapjoy/internal/gi;
.super Ljava/lang/Object;


# static fields
.field public static final d:Lcom/tapjoy/internal/bm;


# instance fields
.field public final a:Lcom/tapjoy/internal/gk;

.field public final b:Landroid/graphics/Point;

.field public final c:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gi$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gi$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gi;->d:Lcom/tapjoy/internal/bm;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/gk;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/gi;->a:Lcom/tapjoy/internal/gk;

    iput-object p2, p0, Lcom/tapjoy/internal/gi;->b:Landroid/graphics/Point;

    iput-object p3, p0, Lcom/tapjoy/internal/gi;->c:Landroid/graphics/Point;

    return-void
.end method
