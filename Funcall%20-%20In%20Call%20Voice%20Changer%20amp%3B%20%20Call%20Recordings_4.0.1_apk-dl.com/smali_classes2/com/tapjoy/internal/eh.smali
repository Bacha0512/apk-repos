.class public final Lcom/tapjoy/internal/eh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/tapjoy/internal/eh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/tapjoy/internal/eh;

    invoke-direct {v0}, Lcom/tapjoy/internal/eh;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/eh;->a:Lcom/tapjoy/internal/eh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2046
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 38
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1

    .prologue
    .line 32
    .line 1046
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 32
    return-object v0
.end method
