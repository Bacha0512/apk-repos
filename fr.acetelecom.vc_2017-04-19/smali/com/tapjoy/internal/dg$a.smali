.class public final enum Lcom/tapjoy/internal/dg$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/dg$a;

.field public static final enum b:Lcom/tapjoy/internal/dg$a;

.field public static final enum c:Lcom/tapjoy/internal/dg$a;

.field public static final enum d:Lcom/tapjoy/internal/dg$a;

.field public static final enum e:Lcom/tapjoy/internal/dg$a;

.field public static final enum f:Lcom/tapjoy/internal/dg$a;

.field private static final synthetic g:[Lcom/tapjoy/internal/dg$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/tapjoy/internal/dg$a;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/tapjoy/internal/dg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/dg$a;->a:Lcom/tapjoy/internal/dg$a;

    new-instance v0, Lcom/tapjoy/internal/dg$a;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v4}, Lcom/tapjoy/internal/dg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/dg$a;->b:Lcom/tapjoy/internal/dg$a;

    new-instance v0, Lcom/tapjoy/internal/dg$a;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/tapjoy/internal/dg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/dg$a;->c:Lcom/tapjoy/internal/dg$a;

    new-instance v0, Lcom/tapjoy/internal/dg$a;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v6}, Lcom/tapjoy/internal/dg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/dg$a;->d:Lcom/tapjoy/internal/dg$a;

    new-instance v0, Lcom/tapjoy/internal/dg$a;

    const-string v1, "TERMINATED"

    invoke-direct {v0, v1, v7}, Lcom/tapjoy/internal/dg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/dg$a;->e:Lcom/tapjoy/internal/dg$a;

    new-instance v0, Lcom/tapjoy/internal/dg$a;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/dg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/dg$a;->f:Lcom/tapjoy/internal/dg$a;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tapjoy/internal/dg$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->a:Lcom/tapjoy/internal/dg$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tapjoy/internal/dg$a;->b:Lcom/tapjoy/internal/dg$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tapjoy/internal/dg$a;->c:Lcom/tapjoy/internal/dg$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tapjoy/internal/dg$a;->d:Lcom/tapjoy/internal/dg$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tapjoy/internal/dg$a;->e:Lcom/tapjoy/internal/dg$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tapjoy/internal/dg$a;->f:Lcom/tapjoy/internal/dg$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tapjoy/internal/dg$a;->g:[Lcom/tapjoy/internal/dg$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/dg$a;
    .locals 1

    const-class v0, Lcom/tapjoy/internal/dg$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dg$a;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/internal/dg$a;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/dg$a;->g:[Lcom/tapjoy/internal/dg$a;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/dg$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/dg$a;

    return-object v0
.end method
