package com.matrimonymeet

import retrofit2.Call
import retrofit2.http.GET
import retrofit2.http.Query

interface ApiService {
    @GET("match.php")
    fun getMatches(@Query("user_id") userId: String): Call<List<String>>
}
