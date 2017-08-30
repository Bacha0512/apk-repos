.class Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory$1;
.super Ljava/lang/Object;
.source "ToStringConverterFactory.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory;->fromResponseBody(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
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
        "Lokhttp3/ResponseBody;",
        "Ljava/lang/String;",
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
    .line 18
    iput-object p1, p0, Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory$1;->this$0:Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory;

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
    .line 18
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/rami_bar/fun_call/utiles/ToStringConverterFactory$1;->convert(Lokhttp3/ResponseBody;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convert(Lokhttp3/ResponseBody;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Lokhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
