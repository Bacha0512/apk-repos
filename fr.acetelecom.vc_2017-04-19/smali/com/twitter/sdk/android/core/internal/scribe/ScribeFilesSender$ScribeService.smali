.class interface abstract Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ScribeService"
.end annotation


# virtual methods
.method public abstract upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ld/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/r;
            a = "version"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ld/b/r;
            a = "type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "log[]"
        .end annotation
    .end param
    .annotation runtime Ld/b/e;
    .end annotation

    .annotation runtime Ld/b/j;
        a = {
            "Content-Type: application/x-www-form-urlencoded;charset=UTF-8"
        }
    .end annotation

    .annotation runtime Ld/b/n;
        a = "/{version}/jot/{type}"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract uploadSequence(Ljava/lang/String;Ljava/lang/String;)Ld/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/r;
            a = "sequence"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "log[]"
        .end annotation
    .end param
    .annotation runtime Ld/b/e;
    .end annotation

    .annotation runtime Ld/b/j;
        a = {
            "Content-Type: application/x-www-form-urlencoded;charset=UTF-8"
        }
    .end annotation

    .annotation runtime Ld/b/n;
        a = "/scribe/{sequence}"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method
