.class public interface abstract Lcom/twitter/sdk/android/core/services/MediaService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract upload(Lb/aa;Lb/aa;Lb/aa;)Ld/b;
    .param p1    # Lb/aa;
        .annotation runtime Ld/b/p;
            a = "media"
        .end annotation
    .end param
    .param p2    # Lb/aa;
        .annotation runtime Ld/b/p;
            a = "media_data"
        .end annotation
    .end param
    .param p3    # Lb/aa;
        .annotation runtime Ld/b/p;
            a = "additional_owners"
        .end annotation
    .end param
    .annotation runtime Ld/b/k;
    .end annotation

    .annotation runtime Ld/b/n;
        a = "https://upload.twitter.com/1.1/media/upload.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/aa;",
            "Lb/aa;",
            "Lb/aa;",
            ")",
            "Ld/b",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
