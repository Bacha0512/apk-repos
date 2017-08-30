.class public Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory;
.super Lretrofit2/Converter$Factory;
.source "ToStringConverterFactory.java"


# static fields
.field private static final MEDIA_TYPE:Lokhttp3/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "text/plain"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory;->MEDIA_TYPE:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory;->MEDIA_TYPE:Lokhttp3/MediaType;

    return-object v0
.end method


# virtual methods
.method public fromResponseBody(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 17
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory$1;

    invoke-direct {v0, p0}, Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory$1;-><init>(Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory;)V

    .line 25
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toRequestBody(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/Converter",
            "<*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory$2;

    invoke-direct {v0, p0}, Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory$2;-><init>(Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory;)V

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
