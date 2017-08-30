.class public final enum Lcom/fyber/ads/videos/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/ads/videos/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fyber/ads/videos/d;

.field public static final enum b:Lcom/fyber/ads/videos/d;

.field public static final enum c:Lcom/fyber/ads/videos/d;

.field public static final enum d:Lcom/fyber/ads/videos/d;

.field public static final enum e:Lcom/fyber/ads/videos/d;

.field private static final synthetic i:[Lcom/fyber/ads/videos/d;


# instance fields
.field private final f:Z

.field private final g:Z

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/fyber/ads/videos/d;

    const-string v1, "MUST_QUERY_SERVER_FOR_OFFERS"

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/fyber/ads/videos/d;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/fyber/ads/videos/d;->a:Lcom/fyber/ads/videos/d;

    new-instance v5, Lcom/fyber/ads/videos/d;

    const-string v6, "QUERYING_SERVER_FOR_OFFERS"

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/fyber/ads/videos/d;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v5, Lcom/fyber/ads/videos/d;->b:Lcom/fyber/ads/videos/d;

    new-instance v5, Lcom/fyber/ads/videos/d;

    const-string v6, "READY_TO_SHOW_OFFERS"

    move v7, v11

    move v8, v4

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/fyber/ads/videos/d;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v5, Lcom/fyber/ads/videos/d;->c:Lcom/fyber/ads/videos/d;

    new-instance v5, Lcom/fyber/ads/videos/d;

    const-string v6, "SHOWING_OFFERS"

    move v7, v12

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/fyber/ads/videos/d;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v5, Lcom/fyber/ads/videos/d;->d:Lcom/fyber/ads/videos/d;

    new-instance v5, Lcom/fyber/ads/videos/d;

    const-string v6, "USER_ENGAGED"

    move v7, v13

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/fyber/ads/videos/d;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v5, Lcom/fyber/ads/videos/d;->e:Lcom/fyber/ads/videos/d;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fyber/ads/videos/d;

    sget-object v1, Lcom/fyber/ads/videos/d;->a:Lcom/fyber/ads/videos/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fyber/ads/videos/d;->b:Lcom/fyber/ads/videos/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fyber/ads/videos/d;->c:Lcom/fyber/ads/videos/d;

    aput-object v1, v0, v11

    sget-object v1, Lcom/fyber/ads/videos/d;->d:Lcom/fyber/ads/videos/d;

    aput-object v1, v0, v12

    sget-object v1, Lcom/fyber/ads/videos/d;->e:Lcom/fyber/ads/videos/d;

    aput-object v1, v0, v13

    sput-object v0, Lcom/fyber/ads/videos/d;->i:[Lcom/fyber/ads/videos/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/fyber/ads/videos/d;->f:Z

    iput-boolean p4, p0, Lcom/fyber/ads/videos/d;->h:Z

    iput-boolean p5, p0, Lcom/fyber/ads/videos/d;->g:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/ads/videos/d;
    .locals 1

    const-class v0, Lcom/fyber/ads/videos/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/videos/d;

    return-object v0
.end method

.method public static values()[Lcom/fyber/ads/videos/d;
    .locals 1

    sget-object v0, Lcom/fyber/ads/videos/d;->i:[Lcom/fyber/ads/videos/d;

    invoke-virtual {v0}, [Lcom/fyber/ads/videos/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/ads/videos/d;

    return-object v0
.end method


# virtual methods
.method final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fyber/ads/videos/d;->f:Z

    return v0
.end method

.method final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fyber/ads/videos/d;->g:Z

    return v0
.end method

.method final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fyber/ads/videos/d;->h:Z

    return v0
.end method
