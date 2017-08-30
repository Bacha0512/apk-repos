.class public interface abstract Lb/a/a/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/a/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/a/m$1;

    invoke-direct {v0}, Lb/a/a/m$1;-><init>()V

    sput-object v0, Lb/a/a/m;->a:Lb/a/a/m;

    return-void
.end method


# virtual methods
.method public abstract a(ILb/a/a/a;)V
.end method

.method public abstract a(ILc/e;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lb/a/a/f;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lb/a/a/f;",
            ">;Z)Z"
        }
    .end annotation
.end method
