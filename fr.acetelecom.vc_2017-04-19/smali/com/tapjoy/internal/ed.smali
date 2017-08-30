.class public abstract Lcom/tapjoy/internal/ed;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lcom/tapjoy/internal/ed;

.field private static c:Lcom/tapjoy/internal/ed;


# instance fields
.field protected volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/eq;->a()V

    invoke-static {}, Lcom/tapjoy/internal/em;->a()V

    new-instance v0, Lcom/tapjoy/internal/ef;

    invoke-direct {v0}, Lcom/tapjoy/internal/ef;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ed;->b:Lcom/tapjoy/internal/ed;

    sput-object v0, Lcom/tapjoy/internal/ed;->c:Lcom/tapjoy/internal/ed;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/ed;->a:Z

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/ed;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/ed;->c:Lcom/tapjoy/internal/ed;

    return-object v0
.end method


# virtual methods
.method public abstract a(F)V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(ILcom/tapjoy/TJAwardCurrencyListener;)V
.end method

.method public abstract a(ILcom/tapjoy/TJSpendCurrencyListener;)V
.end method

.method public abstract a(ILjava/lang/String;)V
.end method

.method public abstract a(Landroid/app/Activity;)V
.end method

.method public abstract a(Landroid/opengl/GLSurfaceView;)V
.end method

.method public abstract a(Lcom/tapjoy/TJEarnedCurrencyListener;)V
.end method

.method public abstract a(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V
.end method

.method public abstract a(Lcom/tapjoy/TJVideoListener;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;J)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end method

.method public abstract a(Ljava/util/Set;)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract b(I)V
.end method

.method public abstract b(Landroid/app/Activity;)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b(Z)V
.end method

.method public abstract c()F
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract d()V
.end method

.method public abstract d(Ljava/lang/String;)V
.end method

.method public abstract e()V
.end method

.method public abstract e(Ljava/lang/String;)V
.end method

.method public abstract f()Ljava/util/Set;
.end method

.method public abstract f(Ljava/lang/String;)V
.end method

.method public abstract g()V
.end method

.method public abstract g(Ljava/lang/String;)V
.end method

.method public abstract h()Z
.end method

.method public abstract i()Z
.end method
