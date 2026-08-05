.class Lcom/UHF/scanlable/ScanUploader$1;
.super Ljava/lang/Object;
.source "ScanUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/UHF/scanlable/ScanUploader;->postScan(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$epc:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/UHF/scanlable/ScanUploader$1;->val$epc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 30
    nop

    .line 32
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://203.0.113.10:5050/scan"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_6d
    .catchall {:try_start_2 .. :try_end_f} :catchall_63

    .line 34
    :try_start_f
    const-string v0, "POST"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 35
    const-string v0, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/16 v0, 0x7d0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 37
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"tag_id\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/UHF/scanlable/ScanUploader$1;->val$epc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 41
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 42
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 43
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 44
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_58} :catch_60
    .catchall {:try_start_f .. :try_end_58} :catchall_5e

    .line 48
    if-eqz v1, :cond_73

    .line 49
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_73

    .line 48
    :catchall_5e
    move-exception v0

    goto :goto_67

    .line 45
    :catch_60
    move-exception v0

    move-object v0, v1

    goto :goto_6e

    .line 48
    :catchall_63
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_67
    if-eqz v1, :cond_6c

    .line 49
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 51
    :cond_6c
    throw v0

    .line 45
    :catch_6d
    move-exception v1

    .line 48
    :goto_6e
    if-eqz v0, :cond_73

    .line 49
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 52
    :cond_73
    :goto_73
    return-void
.end method
