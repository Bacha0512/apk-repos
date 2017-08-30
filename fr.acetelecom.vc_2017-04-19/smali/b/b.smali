.class public interface abstract Lb/b;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lb/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b$1;

    invoke-direct {v0}, Lb/b$1;-><init>()V

    sput-object v0, Lb/b;->b:Lb/b;

    return-void
.end method


# virtual methods
.method public abstract a(Lb/ad;Lb/ab;)Lb/z;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
