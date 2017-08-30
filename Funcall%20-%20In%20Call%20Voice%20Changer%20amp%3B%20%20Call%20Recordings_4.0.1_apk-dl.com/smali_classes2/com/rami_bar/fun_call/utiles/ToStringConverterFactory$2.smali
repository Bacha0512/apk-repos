.class Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory$2;
.super Ljava/lang/Object;
.source "ToStringConverterFactory.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory;->toRequestBody(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Converter",
        "<",
        "Ljava/lang/String;",
        "Lokhttp3/RequestBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory$2;->this$0:Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory$2;->convert(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public convert(Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    # getter for: Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory;->MEDIA_TYPE:Lokhttp3/MediaType;
    invoke-static {}, Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory;->access$000()Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method
