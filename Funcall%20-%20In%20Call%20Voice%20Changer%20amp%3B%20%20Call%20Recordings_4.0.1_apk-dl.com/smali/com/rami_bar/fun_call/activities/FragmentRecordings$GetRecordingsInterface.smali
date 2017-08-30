.class interface abstract Lcom/rami_bar/fun_call/activities/FragmentRecordings$GetRecordingsInterface;
.super Ljava/lang/Object;
.source "FragmentRecordings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/activities/FragmentRecordings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "GetRecordingsInterface"
.end annotation


# virtual methods
.method public abstract send(Lcom/rami_bar/fun_call/objects/send/JsonGetRecords;)Lretrofit2/Call;
    .param p1    # Lcom/rami_bar/fun_call/objects/send/JsonGetRecords;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rami_bar/fun_call/objects/send/JsonGetRecords;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/Recordings;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "get_call_history.php"
    .end annotation
.end method
