.class public abstract Lb/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static b:Lb/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lb/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lb/a/c;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lb/j;Lb/a;Lb/a/b/r;)Lb/a/c/b;
.end method

.method public abstract a(Lb/w;)Lb/a/d;
.end method

.method public abstract a(Lb/j;)Lb/a/h;
.end method

.method public abstract a(Lb/k;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract a(Lb/r$a;Ljava/lang/String;)V
.end method

.method public abstract a(Lb/j;Lb/a/c/b;)Z
.end method

.method public abstract b(Lb/j;Lb/a/c/b;)V
.end method
