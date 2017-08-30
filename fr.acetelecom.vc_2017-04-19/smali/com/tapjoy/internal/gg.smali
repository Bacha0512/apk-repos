.class public final Lcom/tapjoy/internal/gg;
.super Ljava/lang/Object;


# static fields
.field public static final h:Lcom/tapjoy/internal/bm;


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public final g:Lcom/tapjoy/internal/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/gg$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gg$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gg;->h:Lcom/tapjoy/internal/bm;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Rect;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/ey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/gg;->a:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/tapjoy/internal/gg;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tapjoy/internal/gg;->c:Z

    iput-object p4, p0, Lcom/tapjoy/internal/gg;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/tapjoy/internal/gg;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/tapjoy/internal/gg;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/tapjoy/internal/gg;->g:Lcom/tapjoy/internal/ey;

    return-void
.end method
