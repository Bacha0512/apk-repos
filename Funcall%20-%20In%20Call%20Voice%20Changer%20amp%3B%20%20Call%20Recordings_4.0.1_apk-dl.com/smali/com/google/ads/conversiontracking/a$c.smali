.class public Lcom/google/ads/conversiontracking/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/conversiontracking/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/google/ads/conversiontracking/a$a;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    return-void
.end method

.method static synthetic a(Lcom/google/ads/conversiontracking/a$c;)Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/google/ads/conversiontracking/a$c;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/google/ads/conversiontracking/a$c;)Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$c;->c:Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;

    return-object v0
.end method

.method static synthetic c(Lcom/google/ads/conversiontracking/a$c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/ads/conversiontracking/a$c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$c;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/ads/conversiontracking/a$c;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$c;->h:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/google/ads/conversiontracking/a$c;)Lcom/google/ads/conversiontracking/a$a;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$c;->g:Lcom/google/ads/conversiontracking/a$a;

    return-object v0
.end method

.method static synthetic g(Lcom/google/ads/conversiontracking/a$c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$c;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/google/ads/conversiontracking/a$c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$c;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/ads/conversiontracking/a$c;
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/conversiontracking/a$c;->b:Z

    .line 452
    return-object p0
.end method

.method public a(Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;)Lcom/google/ads/conversiontracking/a$c;
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/google/ads/conversiontracking/a$c;->c:Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;

    .line 457
    return-object p0
.end method

.method public a(Lcom/google/ads/conversiontracking/a$a;)Lcom/google/ads/conversiontracking/a$c;
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/google/ads/conversiontracking/a$c;->g:Lcom/google/ads/conversiontracking/a$a;

    .line 477
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/google/ads/conversiontracking/a$c;->a:Ljava/lang/String;

    .line 447
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/google/ads/conversiontracking/a$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/conversiontracking/a$c;"
        }
    .end annotation

    .prologue
    .line 481
    iput-object p1, p0, Lcom/google/ads/conversiontracking/a$c;->h:Ljava/util/Map;

    .line 482
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/google/ads/conversiontracking/a$c;->d:Ljava/lang/String;

    .line 462
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/google/ads/conversiontracking/a$c;->e:Ljava/lang/String;

    .line 467
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/google/ads/conversiontracking/a$c;->f:Ljava/lang/String;

    .line 472
    return-object p0
.end method
