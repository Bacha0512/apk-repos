.class public final Lcom/tapjoy/internal/ha;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/tapjoy/internal/ha;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Throwable;

.field private d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/ha;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/ha;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/ha;->a:Lcom/tapjoy/internal/ha;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/tapjoy/internal/ha;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/ha;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/internal/ha;->c:Ljava/lang/Throwable;

    if-nez p3, :cond_0

    iput-object p2, p0, Lcom/tapjoy/internal/ha;->d:[Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "non-sensical empty or null argument array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/tapjoy/internal/ha;->d:[Ljava/lang/Object;

    goto :goto_0
.end method
