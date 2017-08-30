.class Lcom/rami_bar/fun_call/activities/ActivityMain$GetAdvertisingIdTask;
.super Landroid/os/AsyncTask;
.source "ActivityMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/activities/ActivityMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAdvertisingIdTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;


# direct methods
.method private constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V
    .locals 0

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$GetAdvertisingIdTask;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityMain;Lcom/rami_bar/fun_call/activities/ActivityMain$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;
    .param p2, "x1"    # Lcom/rami_bar/fun_call/activities/ActivityMain$1;

    .prologue
    .line 1318
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain$GetAdvertisingIdTask;-><init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1318
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain$GetAdvertisingIdTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1321
    const/4 v2, 0x0

    .line 1323
    .local v2, "idInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_0
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$GetAdvertisingIdTask;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    invoke-virtual {v3}, Lcom/rami_bar/fun_call/activities/ActivityMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 1327
    :goto_0
    const/4 v0, 0x0

    .line 1329
    .local v0, "advertId":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1330
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1336
    :cond_0
    :goto_1
    return-object v0

    .line 1324
    .end local v0    # "advertId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1325
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1332
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "advertId":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1333
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 1324
    .end local v0    # "advertId":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1318
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain$GetAdvertisingIdTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "advertId"    # Ljava/lang/String;

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$GetAdvertisingIdTask;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # setter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->mAdvertisingId:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$2902(Lcom/rami_bar/fun_call/activities/ActivityMain;Ljava/lang/String;)Ljava/lang/String;

    .line 1342
    return-void
.end method
