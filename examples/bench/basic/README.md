# Benchmark

Benchmark run from 2019-03-28 17:58:32.556678Z UTC

## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>Linux</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Intel(R) Core(TM) i7-4790 CPU @ 3.60GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">8</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">15.61 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.8.0</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">21.2.2</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">10 ms</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">20 ms</td>
  </tr>
</table>

## Statistics



__Input: long_list__

Run Time
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap; text-align: right">1.94 K</td>
    <td style="white-space: nowrap; text-align: right">514.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±31.66%</td>
    <td style="white-space: nowrap; text-align: right">473.58 μs</td>
    <td style="white-space: nowrap; text-align: right">858.48 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap; text-align: right">1.19 K</td>
    <td style="white-space: nowrap; text-align: right">842.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±17.51%</td>
    <td style="white-space: nowrap; text-align: right">843.47 μs</td>
    <td style="white-space: nowrap; text-align: right">1203.75 μs</td>
  </tr>
</table>

Comparsion
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap;text-align: right">1.94 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap; text-align: right">1.19 K</td>
    <td style="white-space: nowrap; text-align: right">1.64x</td>
  </tr>
</table>

Memory Usage
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
      <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap">624.97 KB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap">781.25 KB</td>
    <td>1.25x</td>
  </tr>
</table>

<hr/>

__Input: short_list__

Run Time
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap; text-align: right">2.23 M</td>
    <td style="white-space: nowrap; text-align: right">448.56 ns</td>
    <td style="white-space: nowrap; text-align: right">±141.64%</td>
    <td style="white-space: nowrap; text-align: right">412 ns</td>
    <td style="white-space: nowrap; text-align: right">856 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap; text-align: right">1.55 M</td>
    <td style="white-space: nowrap; text-align: right">645.11 ns</td>
    <td style="white-space: nowrap; text-align: right">±108.73%</td>
    <td style="white-space: nowrap; text-align: right">604 ns</td>
    <td style="white-space: nowrap; text-align: right">2299.48 ns</td>
  </tr>
</table>

Comparsion
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap;text-align: right">2.23 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap; text-align: right">1.55 M</td>
    <td style="white-space: nowrap; text-align: right">1.44x</td>
  </tr>
</table>

Memory Usage
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
      <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap">608 B</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap">800 B</td>
    <td>1.32x</td>
  </tr>
</table>

<hr/>

