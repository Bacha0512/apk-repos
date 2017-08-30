.class public Lcom/rami_bar/fun_call/activities/FragmentRecordings;
.super Landroid/support/v4/app/Fragment;
.source "FragmentRecordings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rami_bar/fun_call/activities/FragmentRecordings$DeleteRecordingsInterface;,
        Lcom/rami_bar/fun_call/activities/FragmentRecordings$GetRecordingsInterface;
    }
.end annotation


# instance fields
.field private adapter:Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;

.field private isLoading:Z

.field private loadNew:Z

.field private lv_recordings:Landroid/widget/ListView;

.field private mCreated:Z

.field private mRecordings:Lcom/rami_bar/fun_call/objects/receive/Recordings;

.field private reachEnd:Z

.field private rl_no_records:Landroid/widget/RelativeLayout;

.field private rl_recordings:Landroid/widget/RelativeLayout;

.field private swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 55
    iput-boolean v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->isLoading:Z

    .line 56
    iput-boolean v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->reachEnd:Z

    return-void
.end method

.method static synthetic access$000(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings;
    .param p1, "x1"    # Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->openDialog(Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;)V

    return-void
.end method

.method static synthetic access$100(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Landroid/view/View;)Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->handlePurchasedCredit(Landroid/view/View;)Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Lcom/rami_bar/fun_call/objects/receive/Recordings;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings;
    .param p1, "x1"    # Lcom/rami_bar/fun_call/objects/receive/Recordings;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->setRecordingsList(Lcom/rami_bar/fun_call/objects/receive/Recordings;)V

    return-void
.end method

.method static synthetic access$200(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings;
    .param p1, "x1"    # Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->downloadFile(Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings;
    .param p1, "x1"    # Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->deleteRecording(Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;)V

    return-void
.end method

.method static synthetic access$400(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->adapter:Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->shareFile(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$600(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->reachEnd:Z

    return v0
.end method

.method static synthetic access$700(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getRecordings(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$902(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Lcom/rami_bar/fun_call/objects/receive/Recordings;)Lcom/rami_bar/fun_call/objects/receive/Recordings;
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings;
    .param p1, "x1"    # Lcom/rami_bar/fun_call/objects/receive/Recordings;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->mRecordings:Lcom/rami_bar/fun_call/objects/receive/Recordings;

    return-object p1
.end method

.method private deleteRecording(Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;)V
    .locals 7
    .param p1, "recording"    # Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;

    .prologue
    .line 387
    new-instance v4, Lcom/rami_bar/fun_call/objects/send/JsonDeleteRecord;

    invoke-direct {v4}, Lcom/rami_bar/fun_call/objects/send/JsonDeleteRecord;-><init>()V

    .line 388
    .local v4, "send":Lcom/rami_bar/fun_call/objects/send/JsonDeleteRecord;
    iget-object v5, p1, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->uniqueid:Ljava/lang/String;

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonDeleteRecord;->uniqueid:Ljava/lang/String;

    .line 389
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonDeleteRecord;->user_id:Ljava/lang/String;

    .line 391
    new-instance v5, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v5}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v6, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;

    invoke-direct {v6}, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;-><init>()V

    invoke-virtual {v5, v6}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 393
    .local v2, "client":Lokhttp3/OkHttpClient;
    new-instance v5, Lretrofit2/Retrofit$Builder;

    invoke-direct {v5}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v6, Lcom/rami_bar/fun_call/utiles/Constants;->API_VOIP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v6

    invoke-virtual {v5, v6}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v3

    .line 394
    .local v3, "retrofit":Lretrofit2/Retrofit;
    const-class v5, Lcom/rami_bar/fun_call/activities/FragmentRecordings$DeleteRecordingsInterface;

    invoke-virtual {v3, v5}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$DeleteRecordingsInterface;

    .line 395
    .local v0, "anInterface":Lcom/rami_bar/fun_call/activities/FragmentRecordings$DeleteRecordingsInterface;
    invoke-interface {v0, v4}, Lcom/rami_bar/fun_call/activities/FragmentRecordings$DeleteRecordingsInterface;->send(Lcom/rami_bar/fun_call/objects/send/JsonDeleteRecord;)Lretrofit2/Call;

    move-result-object v1

    .line 396
    .local v1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/rami_bar/fun_call/objects/receive/JsonReceiveBase;>;"
    new-instance v5, Lcom/rami_bar/fun_call/activities/FragmentRecordings$9;

    invoke-direct {v5, p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings$9;-><init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)V

    invoke-interface {v1, v5}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 421
    return-void
.end method

.method private downloadFile(Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;Ljava/lang/String;)V
    .locals 6
    .param p1, "recording"    # Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->dialout_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->dialout_num:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->start_date:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/rami_bar/fun_call/utiles/Constants;->APPLICATION_FOLDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0900c1

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 243
    :goto_0
    return-void

    .line 242
    :cond_0
    new-instance v2, Lcom/rami_bar/fun_call/utiles/DownloadFile;

    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/rami_bar/fun_call/utiles/DownloadFile;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/rami_bar/fun_call/utiles/DownloadFile$DownloadFileInterface;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v5

    invoke-virtual {v2, v3}, Lcom/rami_bar/fun_call/utiles/DownloadFile;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private getRecordings(Ljava/lang/String;)V
    .locals 7
    .param p1, "offset_uniqueid"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-boolean v5, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->isLoading:Z

    if-eqz v5, :cond_0

    .line 379
    :goto_0
    return-void

    .line 344
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->isLoading:Z

    .line 346
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->startLoadingRefresh()V

    .line 348
    new-instance v4, Lcom/rami_bar/fun_call/objects/send/JsonGetRecords;

    invoke-direct {v4}, Lcom/rami_bar/fun_call/objects/send/JsonGetRecords;-><init>()V

    .line 349
    .local v4, "send":Lcom/rami_bar/fun_call/objects/send/JsonGetRecords;
    iput-object p1, v4, Lcom/rami_bar/fun_call/objects/send/JsonGetRecords;->offset_uniqueid:Ljava/lang/String;

    .line 350
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonGetRecords;->user_id:Ljava/lang/String;

    .line 352
    new-instance v5, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v5}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v6, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;

    invoke-direct {v6}, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;-><init>()V

    invoke-virtual {v5, v6}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 354
    .local v2, "client":Lokhttp3/OkHttpClient;
    new-instance v5, Lretrofit2/Retrofit$Builder;

    invoke-direct {v5}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v6, Lcom/rami_bar/fun_call/utiles/Constants;->API_VOIP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v6

    invoke-virtual {v5, v6}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v3

    .line 355
    .local v3, "retrofit":Lretrofit2/Retrofit;
    const-class v5, Lcom/rami_bar/fun_call/activities/FragmentRecordings$GetRecordingsInterface;

    invoke-virtual {v3, v5}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$GetRecordingsInterface;

    .line 356
    .local v0, "anInterface":Lcom/rami_bar/fun_call/activities/FragmentRecordings$GetRecordingsInterface;
    invoke-interface {v0, v4}, Lcom/rami_bar/fun_call/activities/FragmentRecordings$GetRecordingsInterface;->send(Lcom/rami_bar/fun_call/objects/send/JsonGetRecords;)Lretrofit2/Call;

    move-result-object v1

    .line 357
    .local v1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/rami_bar/fun_call/objects/receive/Recordings;>;"
    new-instance v5, Lcom/rami_bar/fun_call/activities/FragmentRecordings$8;

    invoke-direct {v5, p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings$8;-><init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)V

    invoke-interface {v1, v5}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method private getViewsIds(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 331
    const v0, 0x7f10010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 332
    const v0, 0x7f10017c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->lv_recordings:Landroid/widget/ListView;

    .line 333
    const v0, 0x7f10017d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->rl_no_records:Landroid/widget/RelativeLayout;

    .line 334
    const v0, 0x7f10017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->rl_recordings:Landroid/widget/RelativeLayout;

    .line 335
    return-void
.end method

.method private handleClicks()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->lv_recordings:Landroid/widget/ListView;

    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentRecordings$1;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings$1;-><init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    return-void
.end method

.method private handlePurchasedCredit(Landroid/view/View;)Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;

    .line 255
    .local v0, "recording":Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;
    const-string v1, "1"

    iget-object v2, v0, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->rec_purchased:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    .end local v0    # "recording":Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;
    :goto_0
    return-object v0

    .line 259
    .restart local v0    # "recording":Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;
    :cond_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->mRecordings:Lcom/rami_bar/fun_call/objects/receive/Recordings;

    iget v1, v1, Lcom/rami_bar/fun_call/objects/receive/Recordings;->download_credit:I

    if-gtz v1, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0900c7

    invoke-virtual {p0, v2}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 261
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "startBillingActivity"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "list"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 262
    const/4 v0, 0x0

    goto :goto_0

    .line 265
    :cond_1
    const-string v1, "1"

    iput-object v1, v0, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->rec_purchased:Ljava/lang/String;

    .line 266
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->mRecordings:Lcom/rami_bar/fun_call/objects/receive/Recordings;

    iget v2, v1, Lcom/rami_bar/fun_call/objects/receive/Recordings;->download_credit:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/rami_bar/fun_call/objects/receive/Recordings;->download_credit:I

    .line 267
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/rami_bar/fun_call/activities/ActivityMain;

    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->mRecordings:Lcom/rami_bar/fun_call/objects/receive/Recordings;

    iget v2, v2, Lcom/rami_bar/fun_call/objects/receive/Recordings;->download_credit:I

    invoke-virtual {v1, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setRecordsLeft(I)V

    .line 268
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->adapter:Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;

    invoke-virtual {v1}, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private openDialog(Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;)V
    .locals 9
    .param p1, "recording"    # Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;

    .prologue
    const/16 v8, 0x8

    .line 117
    new-instance v5, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 118
    .local v5, "mDialog":Landroid/app/Dialog;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 119
    const v6, 0x7f04003a

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 120
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 122
    const v6, 0x7f10015b

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 123
    .local v3, "dialog_recording_play":Landroid/widget/Button;
    const v6, 0x7f10015c

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 124
    .local v0, "dialog_recording_call":Landroid/widget/Button;
    const v6, 0x7f10015d

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 125
    .local v4, "dialog_recording_share":Landroid/widget/Button;
    const v6, 0x7f10015e

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 126
    .local v2, "dialog_recording_download":Landroid/widget/Button;
    const v6, 0x7f10015f

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 128
    .local v1, "dialog_recording_delete":Landroid/widget/Button;
    const-string v6, "2"

    iget-object v7, p1, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->rec_purchased:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 129
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 134
    :cond_0
    invoke-virtual {v3, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 135
    new-instance v6, Lcom/rami_bar/fun_call/activities/FragmentRecordings$2;

    invoke-direct {v6, p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings$2;-><init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 153
    new-instance v6, Lcom/rami_bar/fun_call/activities/FragmentRecordings$3;

    invoke-direct {v6, p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings$3;-><init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 167
    new-instance v6, Lcom/rami_bar/fun_call/activities/FragmentRecordings$4;

    invoke-direct {v6, p0, v5}, Lcom/rami_bar/fun_call/activities/FragmentRecordings$4;-><init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Landroid/app/Dialog;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 180
    new-instance v6, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;

    invoke-direct {v6, p0, v5}, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;-><init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Landroid/app/Dialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-virtual {v4, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 210
    new-instance v6, Lcom/rami_bar/fun_call/activities/FragmentRecordings$6;

    invoke-direct {v6, p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings$6;-><init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    return-void
.end method

.method private setRecordingsList(Lcom/rami_bar/fun_call/objects/receive/Recordings;)V
    .locals 4
    .param p1, "recordings"    # Lcom/rami_bar/fun_call/objects/receive/Recordings;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 280
    if-nez p1, :cond_0

    .line 328
    :goto_0
    return-void

    .line 284
    :cond_0
    iput-boolean v2, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->isLoading:Z

    .line 286
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/rami_bar/fun_call/objects/receive/Recordings;->download_credit:I

    if-ltz v0, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/activities/ActivityMain;

    iget v1, p1, Lcom/rami_bar/fun_call/objects/receive/Recordings;->download_credit:I

    invoke-virtual {v0, v1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->setRecordsLeft(I)V

    .line 290
    :cond_1
    iget-boolean v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->loadNew:Z

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->adapter:Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;

    invoke-virtual {v0}, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;->clear()V

    .line 292
    iput-boolean v2, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->loadNew:Z

    .line 293
    iget-object v0, p1, Lcom/rami_bar/fun_call/objects/receive/Recordings;->call_history:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/rami_bar/fun_call/objects/receive/Recordings;->call_history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->rl_recordings:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->rl_no_records:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 303
    :cond_2
    iget-object v0, p1, Lcom/rami_bar/fun_call/objects/receive/Recordings;->call_history:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/rami_bar/fun_call/objects/receive/Recordings;->call_history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 304
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->adapter:Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;

    iget-object v1, p1, Lcom/rami_bar/fun_call/objects/receive/Recordings;->call_history:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;->addAll(Ljava/util/Collection;)V

    .line 305
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->adapter:Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;

    invoke-virtual {v0}, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;->notifyDataSetChanged()V

    .line 310
    :goto_1
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->lv_recordings:Landroid/widget/ListView;

    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentRecordings$7;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings$7;-><init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->rl_recordings:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->rl_no_records:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 307
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->reachEnd:Z

    goto :goto_1
.end method

.method private shareFile(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v0, "share":Landroid/content/Intent;
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 249
    const v1, 0x7f0900ca

    invoke-virtual {p0, v1}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->startActivity(Landroid/content/Intent;)V

    .line 250
    return-void
.end method

.method private startLoadingRefresh()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 273
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 274
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-array v1, v4, [I

    const v2, 0x7f0e002a

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 275
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/16 v1, 0x64

    invoke-virtual {v0, v3, v3, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 276
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 277
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    const v1, 0x7f040040

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getViewsIds(Landroid/view/View;)V

    .line 68
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->handleClicks()V

    .line 70
    new-instance v1, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;

    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f04007b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->adapter:Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;

    .line 71
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->lv_recordings:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->adapter:Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->mCreated:Z

    .line 75
    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 92
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->reachEnd:Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->loadNew:Z

    .line 95
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getRecordings(Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 82
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->mCreated:Z

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->reachEnd:Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->loadNew:Z

    .line 85
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getRecordings(Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method
