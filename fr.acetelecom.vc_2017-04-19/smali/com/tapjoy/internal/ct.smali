.class public final Lcom/tapjoy/internal/ct;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/tapjoy/internal/cp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ", "

    new-instance v1, Lcom/tapjoy/internal/cp;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/cp;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/tapjoy/internal/ct;->a:Lcom/tapjoy/internal/cp;

    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method
