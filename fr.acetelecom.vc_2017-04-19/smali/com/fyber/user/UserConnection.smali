.class public final enum Lcom/fyber/user/UserConnection;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/user/UserConnection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/fyber/user/UserConnection;

.field public static final enum three_g:Lcom/fyber/user/UserConnection;

.field public static final enum wifi:Lcom/fyber/user/UserConnection;


# instance fields
.field public final connection:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/fyber/user/UserConnection;

    const-string v1, "wifi"

    const-string v2, "wifi"

    invoke-direct {v0, v1, v3, v2}, Lcom/fyber/user/UserConnection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserConnection;->wifi:Lcom/fyber/user/UserConnection;

    new-instance v0, Lcom/fyber/user/UserConnection;

    const-string v1, "three_g"

    const-string v2, "3g"

    invoke-direct {v0, v1, v4, v2}, Lcom/fyber/user/UserConnection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/user/UserConnection;->three_g:Lcom/fyber/user/UserConnection;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fyber/user/UserConnection;

    sget-object v1, Lcom/fyber/user/UserConnection;->wifi:Lcom/fyber/user/UserConnection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fyber/user/UserConnection;->three_g:Lcom/fyber/user/UserConnection;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fyber/user/UserConnection;->a:[Lcom/fyber/user/UserConnection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fyber/user/UserConnection;->connection:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/user/UserConnection;
    .locals 1

    const-class v0, Lcom/fyber/user/UserConnection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/user/UserConnection;

    return-object v0
.end method

.method public static values()[Lcom/fyber/user/UserConnection;
    .locals 1

    sget-object v0, Lcom/fyber/user/UserConnection;->a:[Lcom/fyber/user/UserConnection;

    invoke-virtual {v0}, [Lcom/fyber/user/UserConnection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/user/UserConnection;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fyber/user/UserConnection;->connection:Ljava/lang/String;

    return-object v0
.end method
