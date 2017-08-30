.class public Lcom/fyber/ads/banners/BannerSize$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/ads/banners/BannerSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/fyber/ads/banners/BannerSize$Builder;->a:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/fyber/ads/banners/BannerSize$Builder;->b:I

    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/banners/BannerSize$Builder;)I
    .locals 1

    iget v0, p0, Lcom/fyber/ads/banners/BannerSize$Builder;->a:I

    return v0
.end method

.method static synthetic b(Lcom/fyber/ads/banners/BannerSize$Builder;)I
    .locals 1

    iget v0, p0, Lcom/fyber/ads/banners/BannerSize$Builder;->b:I

    return v0
.end method

.method public static newBuilder()Lcom/fyber/ads/banners/BannerSize$Builder;
    .locals 1

    new-instance v0, Lcom/fyber/ads/banners/BannerSize$Builder;

    invoke-direct {v0}, Lcom/fyber/ads/banners/BannerSize$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/fyber/ads/banners/BannerSize;
    .locals 2

    new-instance v0, Lcom/fyber/ads/banners/BannerSize;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fyber/ads/banners/BannerSize;-><init>(Lcom/fyber/ads/banners/BannerSize$Builder;Lcom/fyber/ads/banners/BannerSize$1;)V

    return-object v0
.end method

.method public withHeight(I)Lcom/fyber/ads/banners/BannerSize$Builder;
    .locals 0

    iput p1, p0, Lcom/fyber/ads/banners/BannerSize$Builder;->b:I

    return-object p0
.end method

.method public withWidth(I)Lcom/fyber/ads/banners/BannerSize$Builder;
    .locals 0

    iput p1, p0, Lcom/fyber/ads/banners/BannerSize$Builder;->a:I

    return-object p0
.end method
