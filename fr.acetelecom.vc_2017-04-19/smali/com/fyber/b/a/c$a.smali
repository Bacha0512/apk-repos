.class public final Lcom/fyber/b/a/c$a;
.super Lcom/fyber/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/b$a",
        "<",
        "Lcom/fyber/b/a/c;",
        "Lcom/fyber/b/a/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/NetworkBannerSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fyber/b/b$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/fyber/b/a/c$a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/fyber/b/a/c$a;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Lcom/fyber/b/a/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fyber/ads/banners/NetworkBannerSize;",
            ">;)",
            "Lcom/fyber/b/a/c$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/fyber/b/a/c$a;->d:Ljava/util/List;

    return-object p0
.end method

.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "banner"

    return-object v0
.end method
